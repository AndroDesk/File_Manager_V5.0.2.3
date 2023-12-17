.class public final Li0/f$b;
.super Ljava/lang/Object;
.source "LocaleListCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static varargs a([Ljava/util/Locale;)Landroid/os/LocaleList;
    .registers 2

    .line 1
    new-instance v0, Landroid/os/LocaleList;

    .line 3
    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 6
    return-object v0
.end method

.method public static b()Landroid/os/LocaleList;
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static c()Landroid/os/LocaleList;
    .registers 1

    .line 1
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
