.class public abstract Lcom/micloud/midrive/session/TransferSession$TransferEvent;
.super Ljava/lang/Object;
.source "TransferSession.java"

# interfaces
.implements Lcom/micloud/midrive/session/BaseSession$Event;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/session/TransferSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "TransferEvent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/micloud/midrive/session/TransferSession;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->this$0:Lcom/micloud/midrive/session/TransferSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    instance-of v0, p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    :cond_a
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    invoke-virtual {p1}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract run()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
