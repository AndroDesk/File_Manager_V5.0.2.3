.class public final Landroidx/fragment/app/Fragment$j;
.super Ljava/lang/Object;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;

.field public o:Ljava/lang/Boolean;

.field public p:Ljava/lang/Boolean;

.field public q:F

.field public r:Landroid/view/View;

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment$j;->i:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$j;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$j;->k:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$j;->l:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/fragment/app/Fragment$j;->m:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$j;->n:Ljava/lang/Object;

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Landroidx/fragment/app/Fragment$j;->q:F

    iput-object v0, p0, Landroidx/fragment/app/Fragment$j;->r:Landroid/view/View;

    return-void
.end method