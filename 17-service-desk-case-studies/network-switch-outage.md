# Case Study: Local Network Switch Outage

**Category:** Network troubleshooting and incident scope  
**Environment:** Simulated service desk  
**Skills illustrated:** Scope assessment, evidence gathering, safe action and verification

> This is a simulated scenario. No real network equipment was administered as part of this documented exercise.

## 1. Scenario

Several users in one area report loss of network connectivity. The scenario indicates that the external ISP service is available.

## 2. Initial assessment

Multiple users affected in the same location or network segment may indicate a shared dependency, such as local switching equipment, rather than separate endpoint faults. This is a clue to investigate, not proof of a particular root cause.

## 3. Investigation in the simulation

1. Establish how many users are affected and whether they share a location or network segment.
2. Check the simulated ISP status to rule out the specific external outage described in the scenario.
3. Inspect the simulated server-room device list.
4. Review the relevant switch status and available diagnostic information.
5. Follow the scenario's authorised recovery action only after the evidence supports it.
6. Check service status and ask affected users to verify connectivity.

In a real environment, rebooting a switch can disrupt connected devices. It should be performed only by an authorised person, following change or incident procedures and considering business impact.

## 4. Verification

A device returning online is not sufficient by itself. Confirm that affected users can access the network again and record any users or services that remain affected.

## 5. Learning points

- Identify the scope before choosing a fix.
- Shared symptoms may point to shared infrastructure.
- Avoid disruptive changes without authorisation and evidence.
- Verify service restoration with affected users and document the outcome.

## Screenshot checklist

Add reviewed screenshots here when available:
- Simulated incident showing multiple affected users.
- ISP status check.
- Relevant switch status and recovery confirmation, if captured.

Remove sensitive internal network details before publishing.
