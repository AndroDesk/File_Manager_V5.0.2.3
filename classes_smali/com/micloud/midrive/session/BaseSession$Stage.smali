.class public Lcom/micloud/midrive/session/BaseSession$Stage;
.super Ljava/lang/Object;
.source "BaseSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/BaseSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stage"
.end annotation


# static fields
.field public static final END:Lcom/micloud/midrive/session/BaseSession$Stage;

.field public static final WAITING:Lcom/micloud/midrive/session/BaseSession$Stage;


# instance fields
.field public final name:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 3
    const-string v1, "WAITING"

    .line 5
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->WAITING:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 10
    new-instance v0, Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 12
    const-string v1, "END"

    .line 14
    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->END:Lcom/micloud/midrive/session/BaseSession$Stage;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$Stage;->name:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    const-string v0, ""

    .line 3
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, "#"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Stage;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
