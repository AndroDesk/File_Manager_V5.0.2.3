.class Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;
.super Li1/a;
.source "PadGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-direct {p0}, Li1/a;-><init>()V

    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mCount:I

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mCount:I

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_103

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f042deb

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0329e3

    invoke-static {v1}, Lnp/NPFog;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f0329e2

    invoke-static {v3}, Lnp/NPFog;->d(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f032f99

    invoke-static {v4}, Lnp/NPFog;->d(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f032fd0

    invoke-static {v5}, Lnp/NPFog;->d(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v6, 0x8

    if-eqz p2, :cond_ce

    const/4 v7, 0x1

    if-eq p2, v7, :cond_8d

    const/4 v7, 0x2

    if-eq p2, v7, :cond_60

    goto/16 :goto_fa

    :cond_60
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1101db

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f1101da

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f080237

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_fa

    :cond_8d
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1101dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f1101dc

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f080238

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c8

    const-string v1, "lottie/guid_image_dark.json"

    goto :goto_ca

    :cond_c8
    const-string v1, "lottie/guid_image_light.json"

    :goto_ca
    invoke-virtual {v5, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_fa

    :cond_ce
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1101d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f1101d8

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f080236

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_fa
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    invoke-static {v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_103
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
