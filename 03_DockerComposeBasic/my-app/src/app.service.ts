import { Injectable } from '@nestjs/common';
import { createConnection } from 'mysql2/promise';

@Injectable()
export class AppService {
  async getHello(): Promise<string> {
    const connection = await createConnection({
      host     : 'localhost',
      port: 3306,
      user     : 'foo',
      password : '1234',
      database : 'foo-db'
    })

    const [rows] = await connection.query("SELECT content FROM message WHERE id='greeting'");

    await connection.end();

    return rows[0].content;
  }
}
