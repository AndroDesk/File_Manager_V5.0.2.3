.class public final Lxcrash/d$g;
.super Ljava/lang/Object;
.source "FileManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxcrash/d;->d(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lxcrash/d;


# direct methods
.method public constructor <init>(Lxcrash/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lxcrash/d$g;->a:Lxcrash/d;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object p1, p0, Lxcrash/d$g;->a:Lxcrash/d;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const-string p1, "placeholder_"

    .line 8
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1c

    .line 14
    iget-object p1, p0, Lxcrash/d$g;->a:Lxcrash/d;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p1, ".dirty.xcrash"

    .line 21
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1c

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_1d

    .line 29
    :cond_1c
    const/4 p1, 0x0

    .line 30
    :goto_1d
    return p1
.end method
