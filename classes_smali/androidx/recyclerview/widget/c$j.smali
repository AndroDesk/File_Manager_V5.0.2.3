.class public final Landroidx/recyclerview/widget/c$j;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/RecyclerView$b0;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$b0;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/c$j;->a:Landroidx/recyclerview/widget/RecyclerView$b0;

    iput p2, p0, Landroidx/recyclerview/widget/c$j;->b:I

    iput p3, p0, Landroidx/recyclerview/widget/c$j;->c:I

    iput p4, p0, Landroidx/recyclerview/widget/c$j;->d:I

    iput p5, p0, Landroidx/recyclerview/widget/c$j;->e:I

    return-void
.end method
