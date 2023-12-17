.class public final synthetic Lcom/android/cloud/fragment/model/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:Lcom/android/cloud/fragment/model/CloudDriveModel;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/cloud/fragment/model/CloudDriveModel;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/b;->a:Lcom/android/cloud/fragment/model/CloudDriveModel;

    iput p2, p0, Lcom/android/cloud/fragment/model/b;->b:I

    iput-boolean p3, p0, Lcom/android/cloud/fragment/model/b;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 5

    iget-object v0, p0, Lcom/android/cloud/fragment/model/b;->a:Lcom/android/cloud/fragment/model/CloudDriveModel;

    iget v1, p0, Lcom/android/cloud/fragment/model/b;->b:I

    iget-boolean v2, p0, Lcom/android/cloud/fragment/model/b;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->a(Lcom/android/cloud/fragment/model/CloudDriveModel;IZLi2/f;)V

    return-void
.end method
