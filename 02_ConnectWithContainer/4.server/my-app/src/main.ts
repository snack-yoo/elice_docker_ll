import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import * as process from "process";

const PORT = process.env.SERVER_PORT || 3000;

console.log(`Port is ${PORT}`)
async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(PORT);
}
bootstrap();

