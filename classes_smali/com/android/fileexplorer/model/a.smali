.class public final synthetic Lcom/android/fileexplorer/model/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/dao/file/FileItem;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/dao/file/FileItem;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/model/a;->a:Lcom/android/fileexplorer/dao/file/FileItem;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/model/a;->a:Lcom/android/fileexplorer/dao/file/FileItem;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/android/fileexplorer/model/Util;->a(Lcom/android/fileexplorer/dao/file/FileItem;Landroid/widget/TextView;)V

    return-void
.end method
