.class public Lcom/micloud/midrive/session/SyncSession$SyncStage;
.super Lcom/micloud/midrive/session/BaseSession$Stage;
.source "SyncSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/SyncSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncStage"
.end annotation


# static fields
.field public static final FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

.field public static final INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

.field public static final RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 3
    const-string v1, "INIT"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 10
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 12
    const-string v1, "RUNNING"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 19
    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 21
    const-string v1, "FINISH"

    .line 23
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
