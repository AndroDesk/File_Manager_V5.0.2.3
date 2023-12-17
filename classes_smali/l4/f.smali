.class public final Ll4/f;
.super Ll4/b;
.source "NoCipherOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll4/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll4/b<",
        "Ll4/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;)V
    .registers 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Ll4/b;-><init>(Ll4/j;Lnet/lingala/zip4j/model/ZipParameters;[CZ)V

    .line 6
    return-void
.end method


# virtual methods
.method public final e(Lnet/lingala/zip4j/model/ZipParameters;[CZ)Lg4/d;
    .registers 4

    .line 1
    new-instance p1, Ll4/f$a;

    .line 3
    invoke-direct {p1}, Ll4/f$a;-><init>()V

    .line 6
    return-object p1
.end method
