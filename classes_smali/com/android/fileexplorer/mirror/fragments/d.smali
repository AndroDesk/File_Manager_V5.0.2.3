.class public final synthetic Lcom/android/fileexplorer/mirror/fragments/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iput p1, p0, Lcom/android/fileexplorer/mirror/fragments/d;->a:I

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/fragments/d;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/d;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/d;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_1e

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->d(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Lcom/android/fileexplorer/event/FileChangeEvent;)V

    return-void

    :pswitch_12  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/model/PathSegment;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;->a(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment$8;Lcom/android/fileexplorer/model/PathSegment;)V

    return-void

    :goto_1e
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/d;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget-object v1, p0, Lcom/android/fileexplorer/mirror/fragments/d;->c:Ljava/lang/Object;

    check-cast v1, Lcom/android/fileexplorer/event/FileChangeEvent;

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->d(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;Lcom/android/fileexplorer/event/FileChangeEvent;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
