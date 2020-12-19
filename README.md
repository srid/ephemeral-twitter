# Make your Twitter profile ephemeral

Automatically delete tweets, retweets and likes.

## Run

```
nix-build
# Copy https://github.com/karan/fleets/blob/master/template.env locally (settings.env), and add your Twitter API keys to it.
ENV_FILE_PATH=$(pwd)/settings.env ./result/bin/fleets
```

Run the above command in cron to schedule it.

## TODO

- [ ] Nixify the systemd service

## Credits

Based on [karan/fleets](https://github.com/karan/fleets)
