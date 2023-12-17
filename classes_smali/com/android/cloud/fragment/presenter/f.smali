.class public final synthetic Lcom/android/cloud/fragment/presenter/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZI)V
    .registers 5

    iput p4, p0, Lcom/android/cloud/fragment/presenter/f;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/f;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/f;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/cloud/fragment/presenter/f;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget v0, p0, Lcom/android/cloud/fragment/presenter/f;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/f;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/f;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/cloud/fragment/presenter/f;->d:Z

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->f(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/f;->b:Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/f;->c:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/cloud/fragment/presenter/f;->d:Z

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->p(Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
