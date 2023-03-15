const { writeFile } = require('fs').promises

async function writeToFile ({ path, data }) {
  try {
    const write = await writeFile(path, data)

    console.log('writeToFile', write)
  } catch (error) {
    console.log('-----------------Error writing file-----------------')

    throw error
  }
}

async function run () {
  try {
    const write = await writeToFile({ path: '/invalid-path', data: 'data' })
  } catch (error) {
    console.log(error)
  }
}

run()