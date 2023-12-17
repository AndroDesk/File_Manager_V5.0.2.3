.class public Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "UploadOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/UploadOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mConflictRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

.field private final mConflictType:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

.field private final mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;Lcom/xiaomi/opensdk/pdc/SyncRecord;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V
    .registers 11

    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mConflictType:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    iput-object p9, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    iput-object p10, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mConflictRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    return-void
.end method


# virtual methods
.method public getConflictRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mConflictRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    return-object v0
.end method

.method public getConflictType()Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mConflictType:Lcom/xiaomi/opensdk/pdc/Constants$ConflictType;

    return-object v0
.end method

.method public getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 2

    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/UploadOperation$Result;->mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    return-object v0
.end method
