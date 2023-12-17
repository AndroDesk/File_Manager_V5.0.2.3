.class public final Lxcrash/k;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method
