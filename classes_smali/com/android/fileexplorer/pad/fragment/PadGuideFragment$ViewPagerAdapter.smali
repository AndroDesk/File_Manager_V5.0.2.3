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
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;Landroid/content/Context;I)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 3
    invoke-direct {p0}, Li1/a;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 8
    iput p3, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mCount:I

    .line 10
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p3, Landroid/view/View;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    return-void
.end method

.method public getCount()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mCount:I

    .line 3
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 13
    if-nez v0, :cond_ef

    .line 15
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d007d

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 29
    const v1, 0x7f0a0475

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/TextView;

    .line 38
    const v3, 0x7f0a0474

    .line 41
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/widget/TextView;

    .line 47
    const v4, 0x7f0a020f

    .line 50
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Landroid/widget/ImageView;

    .line 56
    const v5, 0x7f0a0246

    .line 59
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    move-result-object v5

    .line 63
    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    .line 65
    const/16 v6, 0x8

    .line 67
    if-eqz p2, :cond_ba

    .line 69
    const/4 v7, 0x1

    .line 70
    if-eq p2, v7, :cond_79

    .line 72
    const/4 v7, 0x2

    .line 73
    if-eq p2, v7, :cond_4c

    .line 75
    goto/16 :goto_e6

    .line 77
    :cond_4c
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 79
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 82
    move-result-object v7

    .line 83
    const v8, 0x7f1101db

    .line 86
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 95
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 98
    move-result-object v1

    .line 99
    const v7, 0x7f1101da

    .line 102
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    const v1, 0x7f080237

    .line 115
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    goto :goto_e6

    .line 122
    :cond_79
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 124
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v7

    .line 128
    const v8, 0x7f1101dd

    .line 131
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 134
    move-result-object v7

    .line 135
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 140
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 143
    move-result-object v1

    .line 144
    const v7, 0x7f1101dc

    .line 147
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    const v1, 0x7f080238

    .line 160
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 163
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 168
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 171
    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/android/fileexplorer/util/DisplayUtil;->isNightMode(Landroid/content/Context;)Z

    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_b4

    .line 178
    const-string v1, "lottie/guid_image_dark.json"

    .line 180
    goto :goto_b6

    .line 181
    :cond_b4
    const-string v1, "lottie/guid_image_light.json"

    .line 183
    :goto_b6
    invoke-virtual {v5, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 186
    goto :goto_e6

    .line 187
    :cond_ba
    iget-object v7, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 189
    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 192
    move-result-object v7

    .line 193
    const v8, 0x7f1101d9

    .line 196
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 205
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 208
    move-result-object v1

    .line 209
    const v7, 0x7f1101d8

    .line 212
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const v1, 0x7f080236

    .line 228
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 231
    :goto_e6
    iget-object v1, p0, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment$ViewPagerAdapter;->this$0:Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;

    .line 233
    invoke-static {v1}, Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;->access$100(Lcom/android/fileexplorer/pad/fragment/PadGuideFragment;)Landroid/util/SparseArray;

    .line 236
    move-result-object v1

    .line 237
    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 240
    :cond_ef
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
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
