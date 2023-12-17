.class public Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;
.super Lcom/android/fileexplorer/recyclerview/base/ViewHolder;
.source "BasePanelViewHolder.java"


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/base/ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    return-void
.end method


# virtual methods
.method public bindView(ILcom/android/fileexplorer/fragment/panel/PanelItem;)V
    .registers 3

    return-void
.end method

.method public bindView(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/panel/BasePanelViewHolder;->mClickListener:Landroid/view/View$OnClickListener;

    .line 3
    return-void
.end method
