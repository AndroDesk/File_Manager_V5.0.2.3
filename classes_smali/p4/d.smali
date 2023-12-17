.class public final Lp4/d;
.super Ljava/lang/Object;
.source "Okio.java"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lp4/d;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lp4/c;
    .registers 3

    .line 1
    new-instance v0, La/b;

    .line 3
    invoke-direct {v0}, La/b;-><init>()V

    .line 6
    if-eqz p0, :cond_d

    .line 8
    new-instance v1, Lp4/c;

    .line 10
    invoke-direct {v1, p0, v0}, Lp4/c;-><init>(Ljava/io/InputStream;La/b;)V

    .line 13
    return-object v1

    .line 14
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v0, "in == null"

    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 21
    throw p0
.end method
