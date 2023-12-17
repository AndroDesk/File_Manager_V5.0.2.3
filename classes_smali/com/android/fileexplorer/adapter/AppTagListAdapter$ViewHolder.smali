.class Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppTagListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/adapter/AppTagListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private countTv:Landroid/widget/TextView;

.field private iconIv:Landroid/widget/ImageView;

.field private nameTv:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f032c43

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    const v0, 0x7f032f5f

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    const v0, 0x7f032c87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->countTv:Landroid/widget/TextView;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Lcom/android/fileexplorer/adapter/AppTagListAdapter$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/ImageView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->iconIv:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->nameTv:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 1

    iget-object p0, p0, Lcom/android/fileexplorer/adapter/AppTagListAdapter$ViewHolder;->countTv:Landroid/widget/TextView;

    return-object p0
.end method
