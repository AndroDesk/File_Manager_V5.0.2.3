.class public Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;
.super Lm0/a;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/TextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final layout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lm0/a;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V
    .registers 15

    .line 1
    invoke-super {p0, p1, p2}, Lm0/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ln0/c;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_10

    .line 12
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    move-result-object p1

    .line 16
    goto :goto_11

    .line 17
    :cond_10
    const/4 p1, 0x0

    .line 18
    :goto_11
    iget-object v0, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getHint()Ljava/lang/CharSequence;

    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getHelperText()Ljava/lang/CharSequence;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterMaxLength()I

    .line 41
    move-result v3

    .line 42
    iget-object v4, p0, Lcom/google/android/material/textfield/TextInputLayout$AccessibilityDelegate;->layout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 44
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getCounterOverflowDescription()Ljava/lang/CharSequence;

    .line 47
    move-result-object v4

    .line 48
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v5

    .line 52
    const/4 v6, 0x1

    .line 53
    xor-int/2addr v5, v6

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v7

    .line 58
    xor-int/2addr v7, v6

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v8

    .line 63
    xor-int/2addr v8, v6

    .line 64
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v9

    .line 68
    xor-int/2addr v9, v6

    .line 69
    if-nez v9, :cond_4e

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v10

    .line 75
    if-nez v10, :cond_4d

    .line 77
    goto :goto_4e

    .line 78
    :cond_4d
    const/4 v6, 0x0

    .line 79
    :cond_4e
    :goto_4e
    const-string v10, ""

    .line 81
    if-eqz v7, :cond_57

    .line 83
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    goto :goto_58

    .line 88
    :cond_57
    move-object v0, v10

    .line 89
    :goto_58
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    move-result-object v7

    .line 93
    const-string v11, ", "

    .line 95
    if-nez v9, :cond_62

    .line 97
    if-eqz v8, :cond_6a

    .line 99
    :cond_62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_6a

    .line 105
    move-object v0, v11

    .line 106
    goto :goto_6b

    .line 107
    :cond_6a
    move-object v0, v10

    .line 108
    :goto_6b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 115
    invoke-static {v0}, La/a;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    move-result-object v0

    .line 119
    if-eqz v9, :cond_7a

    .line 121
    move-object v1, v2

    .line 122
    goto :goto_7e

    .line 123
    :cond_7a
    if-eqz v8, :cond_7d

    .line 125
    goto :goto_7e

    .line 126
    :cond_7d
    move-object v1, v10

    .line 127
    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object v0

    .line 134
    if-eqz v5, :cond_8d

    .line 136
    iget-object v1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 138
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 141
    goto :goto_98

    .line 142
    :cond_8d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_98

    .line 148
    iget-object v1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 150
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_98
    :goto_98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_cf

    .line 159
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    const/16 v7, 0x1a

    .line 163
    if-lt v1, v7, :cond_a8

    .line 165
    invoke-virtual {p2, v0}, Ln0/c;->m(Ljava/lang/String;)V

    .line 168
    goto :goto_c1

    .line 169
    :cond_a8
    if-eqz v5, :cond_bc

    .line 171
    new-instance v8, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    :cond_bc
    iget-object v8, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 191
    invoke-virtual {v8, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_c1
    xor-int/lit8 v0, v5, 0x1

    .line 196
    if-lt v1, v7, :cond_cb

    .line 198
    iget-object v1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 200
    invoke-static {v1, v0}, Lm0/h0;->g(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 203
    goto :goto_cf

    .line 204
    :cond_cb
    const/4 v1, 0x4

    .line 205
    invoke-virtual {p2, v1, v0}, Ln0/c;->g(IZ)V

    .line 208
    :cond_cf
    :goto_cf
    if-eqz p1, :cond_d8

    .line 210
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 213
    move-result p1

    .line 214
    if-ne p1, v3, :cond_d8

    .line 216
    goto :goto_d9

    .line 217
    :cond_d8
    const/4 v3, -0x1

    .line 218
    :goto_d9
    iget-object p1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 220
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setMaxTextLength(I)V

    .line 223
    if-eqz v6, :cond_e9

    .line 225
    if-eqz v9, :cond_e3

    .line 227
    goto :goto_e4

    .line 228
    :cond_e3
    move-object v2, v4

    .line 229
    :goto_e4
    iget-object p1, p2, Ln0/c;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 231
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setError(Ljava/lang/CharSequence;)V

    .line 234
    :cond_e9
    return-void
.end method
