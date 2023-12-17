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
.method public constructor <init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->val$subMenu:Landroid/widget/ListView;

    .line 5
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 8
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

    .line 1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    move-result p3

    .line 5
    const/16 p4, 0x9

    .line 7
    if-ne p3, p4, :cond_d

    .line 9
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 11
    invoke-static {p3, p1, p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$100(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;Landroid/widget/ListView;I)V

    .line 14
    :cond_d
    const/4 p1, 0x0

    .line 15
    return p1
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 1
    iget-object p2, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 3
    invoke-static {p2}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    .line 6
    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d00cd

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    move-result-object p2

    .line 19
    const p3, 0x7f0a045c

    .line 22
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object p3

    .line 26
    check-cast p3, Landroid/widget/TextView;

    .line 28
    const v0, 0x7f0a0211

    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/ImageView;

    .line 37
    const v1, 0x7f0a045d

    .line 40
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/widget/TextView;

    .line 46
    const v2, 0x7f0a0239

    .line 49
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 55
    invoke-static {v3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$400(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Ljava/util/List;

    .line 58
    move-result-object v3

    .line 59
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;

    .line 65
    iget-object v4, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->title:Ljava/lang/String;

    .line 67
    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p3, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->option:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$Option;

    .line 72
    const/16 v4, 0x8

    .line 74
    const/4 v5, 0x0

    .line 75
    if-nez p3, :cond_84

    .line 77
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string p3, "getView: isSuccess: "

    .line 90
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 95
    invoke-static {p3}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z

    .line 98
    move-result p3

    .line 99
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 106
    const-string p3, "MirrorPopupMenu::"

    .line 108
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 113
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$600(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_7d

    .line 119
    const p1, 0x7f110239

    .line 122
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 125
    goto :goto_ae

    .line 126
    :cond_7d
    const p1, 0x7f11023a

    .line 129
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    goto :goto_ae

    .line 133
    :cond_84
    iget-object p3, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->val$subMenu:Landroid/widget/ListView;

    .line 135
    new-instance v6, Lcom/android/fileexplorer/mirror/view/g;

    .line 137
    invoke-direct {v6, p0, p3, p1}, Lcom/android/fileexplorer/mirror/view/g;-><init>(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;Landroid/widget/ListView;I)V

    .line 140
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 143
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 146
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    const/4 p1, 0x1

    .line 150
    new-array p1, p1, [Landroid/view/View;

    .line 152
    aput-object p2, p1, v5

    .line 154
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    .line 161
    move-result-object p1

    .line 162
    const/high16 p3, 0x3f800000  # 1.0f

    .line 164
    new-array v1, v5, [Lmiuix/animation/ITouchStyle$TouchType;

    .line 166
    invoke-interface {p1, p3, v1}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 169
    move-result-object p1

    .line 170
    new-array p3, v5, [Lmiuix/animation/base/AnimConfig;

    .line 172
    invoke-interface {p1, p2, p3}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    .line 175
    :goto_ae
    iget-object p1, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->icon:Landroid/graphics/Bitmap;

    .line 177
    if-eqz p1, :cond_e0

    .line 179
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 184
    invoke-static {p1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    .line 191
    move-result-object p1

    .line 192
    iget-object p3, v3, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$Option;->icon:Landroid/graphics/Bitmap;

    .line 194
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/RequestManager;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/RequestBuilder;

    .line 197
    move-result-object p1

    .line 198
    new-instance p3, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 200
    iget-object v1, p0, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu$2;->this$0:Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;

    .line 202
    invoke-static {v1}, Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;->access$500(Lcom/android/fileexplorer/mirror/view/MirrorPopupMenu;)Landroid/content/Context;

    .line 205
    move-result-object v1

    .line 206
    const v2, 0x7f0702ef

    .line 209
    invoke-static {v1, v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(Landroid/content/Context;I)I

    .line 212
    move-result v1

    .line 213
    invoke-direct {p3, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 216
    invoke-virtual {p1, p3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 222
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 225
    :cond_e0
    return-object p2
.end method
