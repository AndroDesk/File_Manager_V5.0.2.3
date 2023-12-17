.class public Lcom/android/fileexplorer/adapter/search/SearchUtils;
.super Ljava/lang/Object;
.source "SearchUtils.java"


# static fields
.field public static final SEARCH_TAG:Ljava/lang/String; = "search_tag"

.field private static final SEARCH_TYPE:Ljava/lang/String; = "search_type"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTypeExtra(Landroid/os/Bundle;)Lcom/android/fileexplorer/adapter/search/SearchType;
    .registers 4

    .line 1
    if-eqz p0, :cond_15

    .line 3
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result v1

    .line 13
    const-string v2, "search_type"

    .line 15
    invoke-virtual {p0, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 18
    move-result p0

    .line 19
    aget-object p0, v0, p0

    .line 21
    return-object p0

    .line 22
    :cond_15
    sget-object p0, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 24
    return-object p0
.end method

.method public static putTagAndTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchTag$SearchTagType;Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;
    .registers 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p1

    .line 10
    const-string v1, "search_type"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 18
    move-result p0

    .line 19
    const-string p1, "search_tag"

    .line 21
    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 24
    return-object v0
.end method

.method public static putTypeExtra(Lcom/android/fileexplorer/adapter/search/SearchType;)Landroid/os/Bundle;
    .registers 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result p0

    .line 10
    const-string v1, "search_type"

    .line 12
    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 15
    return-object v0
.end method
