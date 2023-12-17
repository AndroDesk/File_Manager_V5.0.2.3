.class public final synthetic Lcom/android/fileexplorer/controller/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/controller/a;->a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iput-object p2, p0, Lcom/android/fileexplorer/controller/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/fileexplorer/controller/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/android/fileexplorer/controller/a;->d:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v0, p0, Lcom/android/fileexplorer/controller/a;->a:Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;

    iget-object v1, p0, Lcom/android/fileexplorer/controller/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/fileexplorer/controller/a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/fileexplorer/controller/a;->d:J

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/fileexplorer/controller/IntentBuilder;->a(Lcom/android/fileexplorer/listener/base/IBaseActivityOpInterface;Ljava/lang/String;Ljava/lang/String;JLandroid/content/DialogInterface;I)V

    return-void
.end method
