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

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    const-string v1, "INIT"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->INIT:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->RUNNING:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    new-instance v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;

    const-string v1, "FINISH"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/SyncSession$SyncStage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/SyncSession$SyncStage;->FINISH:Lcom/micloud/midrive/session/SyncSession$SyncStage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    return-void
.end method
