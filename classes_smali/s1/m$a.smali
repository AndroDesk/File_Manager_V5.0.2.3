.class public final Ls1/m$a;
.super Ljava/lang/Object;
.source "SyncAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static f:Ljava/lang/Object;

.field public static g:Ls1/m$a;


# instance fields
.field public volatile a:Z

.field public b:[Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/RuntimeException;

.field public e:Ls1/m$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Ls1/m$a;->f:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ls1/m$a;->a:Z

    .line 7
    return-void
.end method
