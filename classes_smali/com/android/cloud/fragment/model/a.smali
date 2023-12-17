.class public final synthetic Lcom/android/cloud/fragment/model/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Li2/g;


# instance fields
.field public final synthetic a:Lcom/android/cloud/fragment/model/CloudDriveModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/android/cloud/fragment/model/CloudDriveModel;Ljava/lang/String;ILjava/lang/Boolean;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/model/a;->a:Lcom/android/cloud/fragment/model/CloudDriveModel;

    iput-object p2, p0, Lcom/android/cloud/fragment/model/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/android/cloud/fragment/model/a;->c:I

    iput-object p4, p0, Lcom/android/cloud/fragment/model/a;->d:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final subscribe(Li2/f;)V
    .registers 6

    iget-object v0, p0, Lcom/android/cloud/fragment/model/a;->a:Lcom/android/cloud/fragment/model/CloudDriveModel;

    iget-object v1, p0, Lcom/android/cloud/fragment/model/a;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/cloud/fragment/model/a;->c:I

    iget-object v3, p0, Lcom/android/cloud/fragment/model/a;->d:Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/cloud/fragment/model/CloudDriveModel;->b(Lcom/android/cloud/fragment/model/CloudDriveModel;Ljava/lang/String;ILjava/lang/Boolean;Li2/f;)V

    return-void
.end method
