.class public final Lp4/d;
.super Ljava/lang/Object;
.source "Okio.java"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lp4/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Lp4/c;
    .registers 3

    new-instance v0, La/b;

    invoke-direct {v0}, La/b;-><init>()V

    if-eqz p0, :cond_d

    new-instance v1, Lp4/c;

    invoke-direct {v1, p0, v0}, Lp4/c;-><init>(Ljava/io/InputStream;La/b;)V

    return-object v1

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "in == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
