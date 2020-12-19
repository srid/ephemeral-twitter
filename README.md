# Make your Twitter profile ephemeral

Automatically delete tweets, retweets and likes.

## Run

1. Create a standalone Twitter app [here](https://developer.twitter.com/en/portal/projects-and-apps)
2. Get keys for use in `settings.env` (see below)
    - Copy its API key & secret
    - Generate and copy its access token & secret 
3. Copy [template.env](https://github.com/karan/fleets/blob/master/template.env) locally as `settings.env`
3. To one-off delete tweets, run the following.

```
ENV_FILE_PATH=$(pwd)/settings.env $(nix-build --no-out-link)/bin/fleets
```

Run the above command in cron to schedule it to run periodically.

## TODO

- [ ] Nixify the systemd service

## Credits

Based on [karan/fleets](https://github.com/karan/fleets)
