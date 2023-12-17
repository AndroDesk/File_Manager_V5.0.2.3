.class public final synthetic Lcom/android/cloud/fragment/model/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .registers 4

    iput p3, p0, Lcom/android/cloud/fragment/model/d;->a:I

    iput-object p1, p0, Lcom/android/cloud/fragment/model/d;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/cloud/fragment/model/d;->c:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 4

    iget v0, p0, Lcom/android/cloud/fragment/model/d;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/cloud/fragment/model/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/d;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->b(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/cloud/fragment/model/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/d;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->h(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/cloud/fragment/model/d;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/d;->c:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->e(Landroid/content/Context;Ljava/util/List;Li2/f;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
