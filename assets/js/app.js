import 'phoenix_html'
import { Socket } from 'phoenix'

import '../css/app.css'

const socket = new Socket('/socket')
const channel = socket.channel('heartbeat:listen', {})

socket.connect()

channel.join()
  .receive('ok', _ => console.log('Joined successfully'))
  .receive('error', _ => console.error('Unable to join'))

channel.on('ping', payload => console.log(payload.body))