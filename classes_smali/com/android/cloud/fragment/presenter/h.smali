.class public final synthetic Lcom/android/cloud/fragment/presenter/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/cloud/fragment/presenter/h;->a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/cloud/fragment/presenter/h;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/cloud/fragment/presenter/h;->c:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 9

    iget-object v0, p0, Lcom/android/cloud/fragment/presenter/h;->a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/cloud/fragment/presenter/h;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/android/cloud/fragment/presenter/h;->c:J

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/cloud/fragment/presenter/CloudFileOperationManager;->q(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/util/List;JLandroid/content/DialogInterface;I)V

    return-void
.end method
