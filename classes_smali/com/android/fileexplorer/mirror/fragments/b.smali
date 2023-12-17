.class public final synthetic Lcom/android/fileexplorer/mirror/fragments/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;I)V
    .registers 3

    iput p2, p0, Lcom/android/fileexplorer/mirror/fragments/b;->a:I

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/b;->b:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/fileexplorer/mirror/fragments/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/b;->b:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->g(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    return-void

    :goto_c
    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/b;->b:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->f(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
