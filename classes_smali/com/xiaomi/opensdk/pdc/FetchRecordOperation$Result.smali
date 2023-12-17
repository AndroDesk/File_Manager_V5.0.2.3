.class public Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;
.super Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;
.source "FetchRecordOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/FetchRecordOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;Lcom/xiaomi/opensdk/pdc/SyncRecord;)V
    .registers 9

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/opensdk/pdc/SyncOperation$Result;-><init>(ZLjava/lang/String;Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;IJLjava/lang/String;)V

    .line 4
    iput-object p8, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 6
    return-void
.end method


# virtual methods
.method public getRecord()Lcom/xiaomi/opensdk/pdc/SyncRecord;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/xiaomi/opensdk/pdc/FetchRecordOperation$Result;->mRecord:Lcom/xiaomi/opensdk/pdc/SyncRecord;

    .line 3
    return-object v0
.end method
