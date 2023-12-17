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

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$Stage;

    const-string v1, "WAITING"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->WAITING:Lcom/micloud/midrive/session/BaseSession$Stage;

    new-instance v0, Lcom/micloud/midrive/session/BaseSession$Stage;

    const-string v1, "END"

    invoke-direct {v0, v1}, Lcom/micloud/midrive/session/BaseSession$Stage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/micloud/midrive/session/BaseSession$Stage;->END:Lcom/micloud/midrive/session/BaseSession$Stage;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/micloud/midrive/session/BaseSession$Stage;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/micloud/midrive/session/BaseSession$Stage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
