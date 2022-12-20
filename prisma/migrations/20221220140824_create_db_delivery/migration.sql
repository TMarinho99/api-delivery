-- CreateTable
CREATE TABLE "deliveryman" (
    "id" TEXT NOT NULL,
    "usename" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "deliveryman_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "clients" (
    "id" TEXT NOT NULL,
    "usename" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "clients_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Deliveries" (
    "id" TEXT NOT NULL,
    "id_client" TEXT NOT NULL,
    "id_devliveryman" TEXT NOT NULL,
    "item_name" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "end_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Deliveries_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "deliveryman_usename_key" ON "deliveryman"("usename");

-- CreateIndex
CREATE UNIQUE INDEX "clients_usename_key" ON "clients"("usename");

-- AddForeignKey
ALTER TABLE "Deliveries" ADD CONSTRAINT "Deliveries_id_client_fkey" FOREIGN KEY ("id_client") REFERENCES "clients"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Deliveries" ADD CONSTRAINT "Deliveries_id_devliveryman_fkey" FOREIGN KEY ("id_devliveryman") REFERENCES "deliveryman"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
