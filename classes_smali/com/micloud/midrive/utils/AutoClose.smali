.class public Lcom/micloud/midrive/utils/AutoClose;
.super Ljava/lang/Object;
.source "AutoClose.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietlyAllowNull(Ljava/io/Closeable;)V
    .registers 1

    .line 1
    if-eqz p0, :cond_a

    .line 3
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    .line 6
    goto :goto_a

    .line 7
    :catch_6
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_a
    :goto_a
    return-void
.end method
