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

    new-instance v0, Lt/c;

    const/16 v1, 0x14

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lt/c;-><init>(II)V

    sput-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Landroidx/recyclerview/widget/z$a;
    .registers 1

    sget-object v0, Landroidx/recyclerview/widget/z$a;->d:Lt/c;

    invoke-virtual {v0}, Lt/c;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/z$a;

    if-nez v0, :cond_f

    new-instance v0, Landroidx/recyclerview/widget/z$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/z$a;-><init>()V

    :cond_f
    return-object v0
.end method
