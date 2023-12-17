.class public final synthetic Lcom/android/cloud/fragment/model/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/h;->a:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iput-object p2, p0, Lcom/android/cloud/fragment/model/h;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/cloud/fragment/model/h;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/cloud/fragment/model/h;->d:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/model/h;->a:Lcom/android/cloud/fragment/model/CloudFileOperateModel;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/h;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/cloud/fragment/model/h;->c:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/cloud/fragment/model/h;->d:Z

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/cloud/fragment/model/CloudFileOperateModel;->a(Lcom/android/cloud/fragment/model/CloudFileOperateModel;Landroid/content/Context;Ljava/lang/String;ZLi2/f;)V

    return-void
.end method
