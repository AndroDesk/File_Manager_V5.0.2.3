.class public Lcom/xiaomi/keychainsdk/exception/KeyBagException;
.super Ljava/lang/Exception;
.source "KeyBagException.java"


# instance fields
.field public code:I


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 3
    iput p1, p0, Lcom/xiaomi/keychainsdk/exception/KeyBagException;->code:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
