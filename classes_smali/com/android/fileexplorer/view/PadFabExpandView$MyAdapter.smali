.class public Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PadFabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/PadFabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mLastClickTime:J

.field public mMaxTextWidth:I

.field public final synthetic this$0:Lcom/android/fileexplorer/view/PadFabExpandView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/PadFabExpandView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    const/4 p1, -0x2

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 9
    return-void
.end method

.method public static synthetic access$200(Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->selectPos(I)V

    .line 4
    return-void
.end method

.method private getMaxTextWidth(Landroid/widget/TextView;F)I
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_3a

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 15
    invoke-static {p2}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;

    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p2

    .line 23
    const-string v0, ""

    .line 25
    :cond_18
    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_33

    .line 31
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    .line 37
    iget-object v2, v1, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 46
    move-result v3

    .line 47
    if-le v2, v3, :cond_18

    .line 49
    iget-object v0, v1, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    .line 51
    goto :goto_18

    .line 52
    :cond_33
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 55
    move-result p1

    .line 56
    float-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 59
    :cond_3a
    iget p1, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 61
    return p1
.end method

.method private selectPos(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v3

    .line 17
    if-eqz v3, :cond_2c

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    .line 25
    if-ne v2, p1, :cond_25

    .line 27
    iget-boolean v4, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    .line 29
    xor-int/lit8 v4, v4, 0x1

    .line 31
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    .line 33
    xor-int/lit8 v4, v4, 0x1

    .line 35
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    .line 40
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    .line 42
    :goto_29
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_c

    .line 45
    :cond_2c
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .registers 3

    .line 1
    check-cast p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->onBindViewHolder(Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;I)V
    .registers 9

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    .line 3
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    const v2, 0x7f0701cc

    const/4 v3, 0x0

    if-nez p2, :cond_1a

    .line 4
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    move v5, v3

    move v3, v2

    move v2, v5

    goto :goto_28

    .line 5
    :cond_1a
    invoke-virtual {p0}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->getItemCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_27

    .line 6
    invoke-static {v2}, Lcom/android/fileexplorer/util/ResUtil;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_28

    :cond_27
    move v2, v3

    .line 7
    :goto_28
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v0, v3, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 8
    iget-object v0, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/PadFabExpandView;->access$100(Lcom/android/fileexplorer/view/PadFabExpandView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;

    .line 9
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->upIcon:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 12
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->downIcon:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 13
    iget-boolean v0, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isUpSelect:Z

    const v1, 0x7f08069f

    const/4 v2, 0x0

    if-eqz v0, :cond_92

    .line 14
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f1103f2

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e2

    .line 16
    :cond_92
    iget-boolean v0, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->isDownSelect:Z

    if-eqz v0, :cond_c9

    .line 17
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v4, 0x7f1103f3

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-static {p2, v1, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_e2

    .line 19
    :cond_c9
    iget-object v0, p1, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/fileexplorer/view/PadFabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 20
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/PadFabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f08069e

    invoke-static {p2, v0, v2}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e2
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;
    .registers 4

    const p2, 0x7f0d01a4

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    new-instance v0, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter$1;-><init>(Lcom/android/fileexplorer/view/PadFabExpandView$MyAdapter;Lcom/android/fileexplorer/view/PadFabExpandView$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
