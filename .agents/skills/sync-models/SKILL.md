---
name: sync-models
description: Synchronize every Agent Gateway model registry in these dotfiles from ../homelab/models.yaml. Use when the model inventory changes or when asked to add, remove, rename, or correct model IDs across Pi, OpenCode, Raycast, Crush, Little Coder, or Zed.
---

# Sync models

`../homelab/models.yaml` is the authoritative model inventory. Its `id`, `name`, and `provider` fields define the models exposed by Agent Gateway.

## Workflow

1. Read the inventory and find every existing model reference with `git grep`. Do not update unrelated default-model selections that already point to a valid inventory ID.
2. Synchronize the Agent Gateway registries in:
   - `dot_pi/agent/models.json`
   - `dot_config/opencode/opencode.jsonc.tmpl`
   - `dot_config/raycast/ai/providers.yaml.tmpl`
   - `dot_config/crush/crush.json.tmpl`
   - `dot_config/little-coder/models.json.tmpl`
   - `dot_config/zed/private_settings.json.tmpl`
3. Add every inventory model in inventory order, with the display name formatted as `<name> (<provider>)`. Replace renamed IDs and remove IDs no longer in the inventory from those registries.
4. Preserve each client's required metadata and existing conventions. For local models, carry over `context` and `max_output` where that client supports them. If a client requires metadata that the inventory does not provide, retain a matching existing convention or ask rather than inventing a limit.
5. If a retired model is a default model, do not silently choose a replacement: report it and ask the user.

## Checks

Run after editing:

```sh
python3 -m json.tool dot_pi/agent/models.json >/dev/null
git diff --check
```

Confirm each of the six registries contains every current inventory ID in the same order, and use `git grep` to confirm removed IDs have no remaining references. Report the files updated and any unresolved default or metadata decision.
