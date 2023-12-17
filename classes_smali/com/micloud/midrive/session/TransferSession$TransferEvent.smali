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
.method public constructor <init>(Lcom/micloud/midrive/session/TransferSession;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->this$0:Lcom/micloud/midrive/session/TransferSession;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 1
    if-ne p0, p1, :cond_4

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_4
    instance-of v0, p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    .line 7
    if-nez v0, :cond_a

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_a
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    check-cast p1, Lcom/micloud/midrive/session/TransferSession$TransferEvent;

    .line 17
    invoke-virtual {p1}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public abstract key()Ljava/lang/String;
.end method

.method public abstract run()Z
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/micloud/midrive/session/TransferSession$TransferEvent;->key()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
