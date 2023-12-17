.class public final synthetic Lcom/android/cloud/fragment/model/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/cloud/fragment/model/e;->b:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/cloud/fragment/model/e;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/model/e;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/e;->b:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/cloud/fragment/model/e;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->g(Landroid/content/Context;Ljava/util/List;ZLi2/f;)V

    return-void
.end method
