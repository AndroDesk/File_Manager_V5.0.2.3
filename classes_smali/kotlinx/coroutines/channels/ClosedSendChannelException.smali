.class public final Lkotlinx/coroutines/channels/ClosedSendChannelException;
.super Ljava/lang/IllegalStateException;
.source "Channel.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
.end method
