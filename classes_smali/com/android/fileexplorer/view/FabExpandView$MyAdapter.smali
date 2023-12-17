.class public Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FabExpandView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabExpandView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public mLastClickTime:J

.field public mMaxTextWidth:I

.field public final synthetic this$0:Lcom/android/fileexplorer/view/FabExpandView;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/view/FabExpandView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 6
    const/4 p1, -0x2

    .line 7
    iput p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 9
    return-void
.end method

.method public static synthetic access$700(Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->selectPos(I)V

    .line 4
    return-void
.end method

.method private getMaxTextWidth(F)I
    .registers 7

    .line 1
    iget v0, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 3
    const/4 v1, -0x2

    .line 4
    if-ne v0, v1, :cond_3b

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 8
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    iget-object p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 16
    invoke-static {p1}, Lcom/android/fileexplorer/view/FabExpandView;->access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p1

    .line 24
    const-string v1, ""

    .line 26
    :cond_19
    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_34

    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    .line 38
    iget-object v3, v2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 47
    move-result v4

    .line 48
    if-le v3, v4, :cond_19

    .line 50
    iget-object v1, v2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    .line 52
    goto :goto_19

    .line 53
    :cond_34
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 56
    move-result p1

    .line 57
    float-to-int p1, p1

    .line 58
    iput p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 60
    :cond_3b
    iget p1, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->mMaxTextWidth:I

    .line 62
    return p1
.end method

.method private selectPos(I)V
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;

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
    check-cast v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    .line 25
    if-ne v2, p1, :cond_25

    .line 27
    iget-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 29
    xor-int/lit8 v4, v4, 0x1

    .line 31
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 33
    xor-int/lit8 v4, v4, 0x1

    .line 35
    iput-boolean v4, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    .line 37
    goto :goto_29

    .line 38
    :cond_25
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    .line 40
    iput-boolean v1, v3, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

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
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    .line 3
    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;

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
    check-cast p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->onBindViewHolder(Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;I)V
    .registers 5

    .line 2
    iget-object v0, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-static {v0}, Lcom/android/fileexplorer/view/FabExpandView;->access$600(Lcom/android/fileexplorer/view/FabExpandView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;

    .line 3
    iget-object v0, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isSelect()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object v0, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->upIcon:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    iget-object v0, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->downIcon:Landroid/widget/ImageView;

    iget-boolean v1, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 7
    iget-boolean v0, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isUpSelect:Z

    if-eqz v0, :cond_52

    .line 8
    iget-object p1, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1103f2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_81

    .line 9
    :cond_52
    iget-boolean v0, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->isDownSelect:Z

    if-eqz v0, :cond_7a

    .line 10
    iget-object p1, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->this$0:Lcom/android/fileexplorer/view/FabExpandView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f1103f3

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_81

    .line 11
    :cond_7a
    iget-object p1, p1, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/android/fileexplorer/view/FabExpandView$ItemInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_81
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .registers 3

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;
    .registers 5

    const p2, 0x7f0d0060

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, p2, p1, v0}, La/a;->c(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;

    invoke-direct {p2, p1}, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p2, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;->getMaxTextWidth(F)I

    move-result v0

    .line 4
    iget-object v1, p2, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 5
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    iget-object v0, p2, Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    new-instance v0, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/android/fileexplorer/view/FabExpandView$MyAdapter$1;-><init>(Lcom/android/fileexplorer/view/FabExpandView$MyAdapter;Lcom/android/fileexplorer/view/FabExpandView$ViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
