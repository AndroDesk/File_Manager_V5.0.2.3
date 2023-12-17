.class public final Landroidx/recyclerview/widget/z$a;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static d:Lt/c;


# instance fields
.field public a:I

.field public b:Landroidx/recyclerview/widget/RecyclerView$l$c;

.field public c:Landroidx/recyclerview/widget/RecyclerView$l$c;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lt/c;

    .line 3
    const/16 v1, 0x14

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Lt/c;-><init>(II)V

    .line 9
    sput-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/z$a;
    .registers 1

    .line 1
    sget-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    .line 3
    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/recyclerview/widget/z$a;

    .line 9
    if-nez v0, :cond_f

    .line 11
    new-instance v0, Landroidx/recyclerview/widget/z$a;

    .line 13
    invoke-direct {v0}, Landroidx/recyclerview/widget/z$a;-><init>()V

    .line 16
    :cond_f
    return-object v0
.end method
