.class public final Lp0/c;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "InputConnectionCompat.java"


# instance fields
.field public final synthetic a:Lp0/d;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Lcom/android/cloud/fragment/presenter/b;)V
    .registers 3

    .line 1
    iput-object p2, p0, Lp0/c;->a:Lp0/d;

    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 7
    return-void
.end method


# virtual methods
.method public final performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 14

    .line 1
    iget-object v0, p0, Lp0/c;->a:Lp0/d;

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez p2, :cond_8

    .line 7
    goto/16 :goto_87

    .line 9
    :cond_8
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 11
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_12

    .line 17
    move v3, v1

    .line 18
    goto :goto_1b

    .line 19
    :cond_12
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.COMMIT_CONTENT"

    .line 21
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_87

    .line 27
    move v3, v2

    .line 28
    :goto_1b
    const/4 v4, 0x0

    .line 29
    if-eqz v3, :cond_21

    .line 31
    :try_start_1e
    const-string v5, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 33
    goto :goto_23

    .line 34
    :cond_21
    const-string v5, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_RESULT_RECEIVER"

    .line 36
    :goto_23
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Landroid/os/ResultReceiver;
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_7f

    .line 42
    if-eqz v3, :cond_2e

    .line 44
    :try_start_2b
    const-string v6, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 46
    goto :goto_30

    .line 47
    :cond_2e
    const-string v6, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_URI"

    .line 49
    :goto_30
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Landroid/net/Uri;

    .line 55
    if-eqz v3, :cond_3b

    .line 57
    const-string v7, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 59
    goto :goto_3d

    .line 60
    :cond_3b
    const-string v7, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_DESCRIPTION"

    .line 62
    :goto_3d
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 65
    move-result-object v7

    .line 66
    check-cast v7, Landroid/content/ClipDescription;

    .line 68
    if-eqz v3, :cond_48

    .line 70
    const-string v8, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 72
    goto :goto_4a

    .line 73
    :cond_48
    const-string v8, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_LINK_URI"

    .line 75
    :goto_4a
    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/net/Uri;

    .line 81
    if-eqz v3, :cond_55

    .line 83
    const-string v9, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 85
    goto :goto_57

    .line 86
    :cond_55
    const-string v9, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_FLAGS"

    .line 88
    :goto_57
    invoke-virtual {p2, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 91
    move-result v9

    .line 92
    if-eqz v3, :cond_60

    .line 94
    const-string v3, "android.support.v13.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 96
    goto :goto_62

    .line 97
    :cond_60
    const-string v3, "androidx.core.view.inputmethod.InputConnectionCompat.CONTENT_OPTS"

    .line 99
    :goto_62
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 102
    move-result-object v3

    .line 103
    check-cast v3, Landroid/os/Bundle;

    .line 105
    if-eqz v6, :cond_77

    .line 107
    if-eqz v7, :cond_77

    .line 109
    new-instance v10, Lp0/e;

    .line 111
    invoke-direct {v10, v6, v7, v8}, Lp0/e;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    .line 114
    check-cast v0, Lcom/android/cloud/fragment/presenter/b;

    .line 116
    invoke-virtual {v0, v10, v9, v3}, Lcom/android/cloud/fragment/presenter/b;->a(Lp0/e;ILandroid/os/Bundle;)Z

    .line 119
    move-result v1
    :try_end_77
    .catchall {:try_start_2b .. :try_end_77} :catchall_7d

    .line 120
    :cond_77
    if-eqz v5, :cond_87

    .line 122
    invoke-virtual {v5, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 125
    goto :goto_87

    .line 126
    :catchall_7d
    move-exception p1

    .line 127
    goto :goto_81

    .line 128
    :catchall_7f
    move-exception p1

    .line 129
    move-object v5, v4

    .line 130
    :goto_81
    if-eqz v5, :cond_86

    .line 132
    invoke-virtual {v5, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 135
    :cond_86
    throw p1

    .line 136
    :cond_87
    :goto_87
    if-eqz v1, :cond_8a

    .line 138
    return v2

    .line 139
    :cond_8a
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 142
    move-result p1

    .line 143
    return p1
.end method
