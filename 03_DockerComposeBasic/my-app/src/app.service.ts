import { Injectable } from '@nestjs/common';
import { createConnection } from 'mysql2/promise';
import * as process from "process";

@Injectable()
export class AppService {
  async getHello(): Promise<string> {
    const DB_HOST = process.env.MY_DB_HOST || 'localhost';
    console.log("DB_HOST is " + DB_HOST);

    const connection = await createConnection({
      host     : process.env.MY_DB_HOST,
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
