# Case Study: VPN and Mapped Network Drive

**Category:** Remote access and networking  
**Environment:** Simulated service desk  
**Skills illustrated:** Symptom analysis, connectivity troubleshooting, verification and documentation

> This is a simulated learning exercise, not a claim of supporting a real user.

## 1. Scenario

A remote user can access the public internet and email but cannot open a department network drive. The drive appears unavailable on the user's workstation.

## 2. Initial reasoning

A mapped drive may point to a file share that is only reachable from the corporate network. If the user's VPN is disconnected, the mapping can remain configured while the underlying server is unreachable.

This is a hypothesis to test, not an assumption to make without checking the available evidence.

## 3. Troubleshooting steps in the simulation

1. Open the simulated remote desktop for the affected workstation.
2. Inspect File Explorer and confirm the department drive is unavailable.
3. Check the VPN client status.
4. If the VPN is disconnected, connect using the approved simulated workflow.
5. Recheck the mapped drive after the tunnel connects.
6. If the drive remains unavailable, consult the simulated file-server documentation for the correct share path and follow the authorised mapping procedure.
7. Confirm whether the share opens successfully.

## 4. Verification

The exercise notes that the mapped drive should reconnect after the VPN is established. The resolution should be recorded only after the drive can actually be opened. If it remains inaccessible, gather further evidence and escalate rather than assuming the VPN was the only cause.

## 5. Example ticket note

**Use only if the simulated checks above were completed and the share was confirmed accessible:**

> Investigated report of an unavailable department drive on a remote workstation. Confirmed the VPN was disconnected in the simulation, connected the VPN and re-tested access to the mapped share. Share access was confirmed after reconnecting. Documented the checks and outcome.

If you have not personally re-run and verified the scenario, label this as a model ticket note rather than a record of completed actions.

## 6. Learning points

- Distinguish public internet access from access to internal resources.
- Check the VPN state before remapping a drive.
- Use approved documentation for the correct network path.
- Verify access after the change.
- Avoid unnecessary changes when the existing mapping may be intact.

## Screenshot checklist

Add reviewed screenshots here when available:
- VPN shown as disconnected.
- Network drive shown as unavailable.
- VPN connected and the share accessible, if captured.

Redact names, internal paths and any sensitive environment details before publishing.
