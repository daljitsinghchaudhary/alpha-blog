#!/usr/bin/env node
const {run} = require('@cli-engine/engine')
const config = {
  channel: 'stable',
  version: '6.15.26-5726b6f'
}
run(process.argv, config)
