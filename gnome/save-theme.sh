#!/usr/bin/env bash
PROFILE_ID=${PROFILE_ID:-$1}

if ! command -v dconf >/dev/null; then
  echo missing command dconf >&2
  exit
fi

if [[ -z "$PROFILE_ID" ]]; then
  echo missing \$PROFILE_ID or \$1
fi

DIR=/org/gnome/terminal/legacy/profiles:/:${PROFILE_ID}

cat <<-'END'
#!/usr/bin/env bash

PROFILE_ID=${PROFILE_ID:-$1}

if command -v dconf >/dev/null && [[ -n "$PROFILE_ID" ]]; then
    DIR=/org/gnome/terminal/legacy/profiles:/:${PROFILE_ID}
END

dconf list $DIR/ | while read line; do
cat <<-END
    dconf write \$DIR/$line "$(dconf read $DIR/$line)"
END
done

cat <<-'END'
fi
END
