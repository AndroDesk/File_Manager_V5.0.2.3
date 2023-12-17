.class public final synthetic Lcom/android/fileexplorer/adapter/recycle/viewholder/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

.field public final synthetic c:Lcom/android/fileexplorer/model/group/FileGroupParent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;I)V
    .registers 4

    iput p3, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    iput-object p2, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->c:Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->c:Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->b(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->b:Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;

    iget-object v1, p0, Lcom/android/fileexplorer/adapter/recycle/viewholder/a;->c:Lcom/android/fileexplorer/model/group/FileGroupParent;

    invoke-static {v0, v1, p1}, Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;->a(Lcom/android/fileexplorer/adapter/recycle/viewholder/VHGroupRecent;Lcom/android/fileexplorer/model/group/FileGroupParent;Landroid/view/View;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
