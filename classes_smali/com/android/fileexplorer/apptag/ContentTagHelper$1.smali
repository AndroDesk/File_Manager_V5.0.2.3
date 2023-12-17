.class Lcom/android/fileexplorer/apptag/ContentTagHelper$1;
.super Ljava/lang/Object;
.source "ContentTagHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/ContentTagHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/fileexplorer/dao/file/ContentTag;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/apptag/ContentTagHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/apptag/ContentTagHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;->this$0:Lcom/android/fileexplorer/apptag/ContentTagHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/fileexplorer/dao/file/ContentTag;Lcom/android/fileexplorer/dao/file/ContentTag;)I
    .registers 3

    invoke-virtual {p2}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/fileexplorer/dao/file/ContentTag;->getFileCount()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/android/fileexplorer/dao/file/ContentTag;

    check-cast p2, Lcom/android/fileexplorer/dao/file/ContentTag;

    invoke-virtual {p0, p1, p2}, Lcom/android/fileexplorer/apptag/ContentTagHelper$1;->compare(Lcom/android/fileexplorer/dao/file/ContentTag;Lcom/android/fileexplorer/dao/file/ContentTag;)I

    move-result p1

    return p1
.end method
