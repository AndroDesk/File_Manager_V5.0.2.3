.class public final synthetic Lcom/android/cloud/fragment/model/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/f;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/cloud/fragment/model/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/cloud/fragment/model/f;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/model/f;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/f;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/cloud/fragment/model/f;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Li2/f;)V

    return-void
.end method
