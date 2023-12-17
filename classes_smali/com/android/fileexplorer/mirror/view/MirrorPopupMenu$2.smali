.class Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;
.super Landroid/widget/BaseAdapter;
.source "MirrorPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->showSubMenu(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

.field public final synthetic val$subMenu:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;)V
    .registers 3

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->val$subMenu:Landroid/widget/ListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;Landroid/widget/ListView;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->lambda$getView$0(Landroid/widget/ListView;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getView$0(Landroid/widget/ListView;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    const/16 p4, 0x9

    if-ne p3, p4, :cond_d

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V

    :cond_d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f042d5b

    invoke-static/range {p3 .. p3}, Lnp/NPFog;->d(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0329ca

    invoke-static/range {p3 .. p3}, Lnp/NPFog;->d(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const v0, 0x7f032f87

    invoke-static {v0}, Lnp/NPFog;->d(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0329cb

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f032faf

    invoke-static {v2}, Lnp/NPFog;->d(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    iget-object v4, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->title:Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez p3, :cond_98

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getView: isSuccess: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MirrorPopupMenu::"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z

    move-result p1

    if-eqz p1, :cond_91

    const p1, 0x7f110239

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c2

    :cond_91
    const p1, 0x7f11023a

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_c2

    :cond_98
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->val$subMenu:Landroid/widget/ListView;

    new-instance v6, Lcom/android/fileexplorer/mirror/view/g;

    invoke-direct {v6, p0, p3, p1}, Lcom/android/fileexplorer/mirror/view/g;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;Landroid/widget/ListView;I)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    new-array p1, p1, [Landroid/view/View;

    aput-object p2, p1, v5

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const/high16 p3, 0x3f800000  # 1.0f

    new-array v1, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, p3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array p3, v5, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    :goto_c2
    iget-object p1, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_f4

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    iget-object p3, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702ef

    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p3, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_f4
    return-object p2
.end method
